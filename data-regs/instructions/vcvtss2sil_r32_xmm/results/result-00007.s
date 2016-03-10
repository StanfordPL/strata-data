  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vmovupd %xmm5, %xmm3                          #  2     0x5   4      OPC=vmovupd_xmm_xmm    
  callq .move_128_032_xmm3_eax_edx_r8d_r9d      #  3     0x9   5      OPC=callq_label        
  cvtss2sil %xmm1, %ebx                         #  4     0xe   4      OPC=cvtss2sil_r32_xmm  
  callq .move_r9b_to_byte_7_of_rbx              #  5     0x12  5      OPC=callq_label        
  retq                                          #  6     0x17  1      OPC=retq               
                                                                                             
.size target, .-target
