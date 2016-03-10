  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movzbw %bh, %bp    #  1     0    4      OPC=movzbw_r16_rh   
  sbbw %bp, %bp      #  2     0x4  3      OPC=sbbw_r16_r16    
  addb %bpl, %bpl    #  3     0x7  3      OPC=addb_r8_r8      
  cmovzq %rcx, %rbx  #  4     0xa  4      OPC=cmovzq_r64_r64  
  retq               #  5     0xe  1      OPC=retq            
                                                              
.size target, .-target
