  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label         
  vzeroall                                      #  2     0x5   3      OPC=vzeroall            
  vmovd %r10d, %xmm13                           #  3     0x8   5      OPC=vmovd_xmm_r32       
  vpmovsxbq %xmm13, %ymm13                      #  4     0xd   5      OPC=vpmovsxbq_ymm_xmm   
  vaddss %xmm15, %xmm13, %xmm1                  #  5     0x12  5      OPC=vaddss_xmm_xmm_xmm  
  retq                                          #  6     0x17  1      OPC=retq                
                                                                                              
.size target, .-target
