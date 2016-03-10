  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_064_xmm2_r10_r11                #  1     0     5      OPC=callq_label              
  vzeroall                                        #  2     0x5   3      OPC=vzeroall                 
  vmovd %r11d, %xmm9                              #  3     0x8   5      OPC=vmovd_xmm_r32            
  movd %r10d, %xmm10                              #  4     0xd   5      OPC=movd_xmm_r32             
  vmovups %xmm9, %xmm11                           #  5     0x12  5      OPC=vmovups_xmm_xmm          
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm2  #  6     0x17  5      OPC=callq_label              
  vpunpckhqdq %xmm2, %xmm2, %xmm1                 #  7     0x1c  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                                            #  8     0x20  1      OPC=retq                     
                                                                                                     
.size target, .-target
