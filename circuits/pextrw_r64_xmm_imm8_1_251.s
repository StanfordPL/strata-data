  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  pmovsxwd %xmm1, %xmm8                         #  1     0     6      OPC=pmovsxwd_xmm_xmm     
  vsqrtss %xmm8, %xmm8, %xmm0                   #  2     0x6   5      OPC=vsqrtss_xmm_xmm_xmm  
  vsqrtss %xmm0, %xmm0, %xmm3                   #  3     0xb   4      OPC=vsqrtss_xmm_xmm_xmm  
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  4     0xf   5      OPC=callq_label          
  movzwl %r13w, %ebx                            #  5     0x14  4      OPC=movzwl_r32_r16       
  retq                                          #  6     0x18  1      OPC=retq                 
                                                                                               
.size target, .-target
