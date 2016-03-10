  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode             
.target:                           #        0     0      OPC=<label>        
  callq .move_128_064_xmm1_r8_r9   #  1     0     5      OPC=callq_label    
  callq .move_032_064_r8d_r9d_rbx  #  2     0x5   5      OPC=callq_label    
  movl %r9d, %r12d                 #  3     0xa   3      OPC=movl_r32_r32   
  addb %bh, %bh                    #  4     0xd   2      OPC=addb_rh_rh     
  xaddq %rbx, %r12                 #  5     0xf   4      OPC=xaddq_r64_r64  
  retq                             #  6     0x13  1      OPC=retq           
                                                                            
.size target, .-target
