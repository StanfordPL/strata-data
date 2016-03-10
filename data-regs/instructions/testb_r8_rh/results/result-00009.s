  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbw %ah, %di   #  1     0    4      OPC=movsbw_r16_rh  
  movzbq %bl, %r8   #  2     0x4  4      OPC=movzbq_r64_r8  
  testb %r8b, %dil  #  3     0x8  3      OPC=testb_r8_r8    
  retq              #  4     0xb  1      OPC=retq           
                                                            
.size target, .-target
