  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r12_r13              #  1     0     5      OPC=callq_label        
  vzeroall                                      #  2     0x5   3      OPC=vzeroall           
  movd %r13d, %xmm7                             #  3     0x8   5      OPC=movd_xmm_r32       
  callq .move_064_128_r12_r13_xmm2              #  4     0xd   5      OPC=callq_label        
  vpmovsxdq %xmm7, %xmm4                        #  5     0x12  5      OPC=vpmovsxdq_xmm_xmm  
  vmovshdup %xmm2, %xmm6                        #  6     0x17  4      OPC=vmovshdup_xmm_xmm  
  movupd %xmm2, %xmm5                           #  7     0x1b  4      OPC=movupd_xmm_xmm     
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  8     0x1f  5      OPC=callq_label        
  retq                                          #  9     0x24  1      OPC=retq               
                                                                                             
.size target, .-target
