  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                    
.target:                                    #        0     0      OPC=<label>               
  vpbroadcastq %xmm1, %ymm3                 #  1     0     5      OPC=vpbroadcastq_ymm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label           
  xorq %rbx, %rbx                           #  3     0xa   3      OPC=xorq_r64_r64          
  xaddb %bl, %dh                            #  4     0xd   3      OPC=xaddb_rh_r8           
  retq                                      #  5     0x10  1      OPC=retq                  
                                                                                            
.size target, .-target
