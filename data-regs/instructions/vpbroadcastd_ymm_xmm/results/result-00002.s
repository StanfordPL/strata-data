  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r8_r9        #  1     0     5      OPC=callq_label           
  vzeroall                              #  2     0x5   3      OPC=vzeroall              
  vmovq %r8, %xmm3                      #  3     0x8   5      OPC=vmovq_xmm_r64         
  vbroadcastss %xmm3, %xmm13            #  4     0xd   5      OPC=vbroadcastss_xmm_xmm  
  vxorps %xmm14, %xmm13, %xmm12         #  5     0x12  5      OPC=vxorps_xmm_xmm_xmm    
  callq .move_128_256_xmm12_xmm13_ymm1  #  6     0x17  5      OPC=callq_label           
  retq                                  #  7     0x1c  1      OPC=retq                  
                                                                                        
.size target, .-target
