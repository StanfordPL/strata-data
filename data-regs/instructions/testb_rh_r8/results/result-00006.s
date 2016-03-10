  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  movzbq %bl, %r10   #  1     0    4      OPC=movzbq_r64_r8  
  movzbw %ah, %di    #  2     0x4  4      OPC=movzbw_r16_rh  
  testb %dil, %r10b  #  3     0x8  3      OPC=testb_r8_r8    
  retq               #  4     0xb  1      OPC=retq           
                                                             
.size target, .-target
