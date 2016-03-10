  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label         
  xchgl %r10d, %r13d                            #  2     0x5   3      OPC=xchgl_r32_r32       
  callq .move_128_64_xmm2_xmm12_xmm13           #  3     0x8   5      OPC=callq_label         
  vaddss %xmm12, %xmm12, %xmm12                 #  4     0xd   5      OPC=vaddss_xmm_xmm_xmm  
  vmovd %r10d, %xmm11                           #  5     0x12  5      OPC=vmovd_xmm_r32       
  vmovss %xmm11, %xmm12, %xmm1                  #  6     0x17  5      OPC=vmovss_xmm_xmm_xmm  
  retq                                          #  7     0x1c  1      OPC=retq                
                                                                                              
.size target, .-target
