  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_064_xmm1_r12_r13              #  1     0     5      OPC=callq_label         
  vsubss %xmm1, %xmm1, %xmm15                   #  2     0x5   4      OPC=vsubss_xmm_xmm_xmm  
  vorps %xmm15, %xmm15, %xmm0                   #  3     0x9   5      OPC=vorps_xmm_xmm_xmm   
  popcntl %r13d, %r9d                           #  4     0xe   5      OPC=popcntl_r32_r32     
  callq .read_of_into_rbx                       #  5     0x13  5      OPC=callq_label         
  vminpd %xmm1, %xmm0, %xmm3                    #  6     0x18  4      OPC=vminpd_xmm_xmm_xmm  
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  7     0x1c  5      OPC=callq_label         
  xchgl %r13d, %ebx                             #  8     0x21  3      OPC=xchgl_r32_r32       
  retq                                          #  9     0x24  1      OPC=retq                
                                                                                              
.size target, .-target
