  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label             
  movd %r12d, %xmm4                             #  2     0x5   5      OPC=movd_xmm_r32            
  vbroadcastss %xmm4, %xmm1                     #  3     0xa   5      OPC=vbroadcastss_xmm_xmm    
  vpunpckldq %xmm1, %xmm2, %xmm9                #  4     0xf   4      OPC=vpunpckldq_xmm_xmm_xmm  
  movhlps %xmm9, %xmm1                          #  5     0x13  4      OPC=movhlps_xmm_xmm         
  retq                                          #  6     0x17  1      OPC=retq                    
                                                                                                  
.size target, .-target
