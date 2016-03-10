  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbw %bh, %bx   #  1     0    4      OPC=movsbw_r16_rh  
  movsbq %bl, %rcx  #  2     0x4  4      OPC=movsbq_r64_r8  
  addb %cl, %ah     #  3     0x8  2      OPC=addb_rh_r8     
  retq              #  4     0xa  1      OPC=retq           
                                                            
.size target, .-target
