  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label          
  vcvttsd2sil %xmm5, %ebx                       #  2     0x5   4      OPC=vcvttsd2sil_r32_xmm  
  pmovzxbd %xmm7, %xmm3                         #  3     0x9   5      OPC=pmovzxbd_xmm_xmm     
  callq .move_128_032_xmm3_eax_edx_r8d_r9d      #  4     0xe   5      OPC=callq_label          
  xchgl %ebx, %r9d                              #  5     0x13  3      OPC=xchgl_r32_r32        
  xaddb %bh, %bh                                #  6     0x16  3      OPC=xaddb_rh_rh          
  retq                                          #  7     0x19  1      OPC=retq                 
                                                                                               
.size target, .-target
