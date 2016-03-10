  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label           
  vmovd %r12d, %xmm9                            #  2     0x5   5      OPC=vmovd_xmm_r32         
  vpbroadcastd %xmm9, %xmm14                    #  3     0xa   5      OPC=vpbroadcastd_xmm_xmm  
  vmovhlps %xmm14, %xmm2, %xmm1                 #  4     0xf   5      OPC=vmovhlps_xmm_xmm_xmm  
  retq                                          #  5     0x14  1      OPC=retq                  
                                                                                                
.size target, .-target
