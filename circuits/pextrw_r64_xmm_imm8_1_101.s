  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  callq .move_128_64_xmm1_xmm10_xmm11       #  1     0     5      OPC=callq_label       
  pmovsxwq %xmm11, %xmm1                    #  2     0x5   6      OPC=pmovsxwq_xmm_xmm  
  vsqrtps %xmm10, %xmm7                     #  3     0xb   5      OPC=vsqrtps_xmm_xmm   
  sqrtss %xmm7, %xmm1                       #  4     0x10  4      OPC=sqrtss_xmm_xmm    
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  5     0x14  5      OPC=callq_label       
  movzwq %r8w, %rbx                         #  6     0x19  4      OPC=movzwq_r64_r16    
  retq                                      #  7     0x1d  1      OPC=retq              
                                                                                        
.size target, .-target
