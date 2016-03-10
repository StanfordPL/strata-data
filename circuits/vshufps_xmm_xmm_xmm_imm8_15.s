  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label              
  vmovd %r13d, %xmm1                            #  2     0x5   5      OPC=vmovd_xmm_r32            
  vpbroadcastd %xmm3, %ymm10                    #  3     0xa   5      OPC=vpbroadcastd_ymm_xmm     
  vbroadcastss %xmm1, %xmm6                     #  4     0xf   5      OPC=vbroadcastss_xmm_xmm     
  vpunpckhqdq %xmm10, %xmm6, %xmm1              #  5     0x14  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                                          #  6     0x19  1      OPC=retq                     
                                                                                                   
.size target, .-target
