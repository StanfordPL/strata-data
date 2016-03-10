  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbq %bl, %rdx  #  1     0    4      OPC=movsbq_r64_r8  
  movsbw %ah, %bx   #  2     0x4  4      OPC=movsbw_r16_rh  
  xorw %dx, %bx     #  3     0x8  3      OPC=xorw_r16_r16   
  retq              #  4     0xb  1      OPC=retq           
                                                            
.size target, .-target
