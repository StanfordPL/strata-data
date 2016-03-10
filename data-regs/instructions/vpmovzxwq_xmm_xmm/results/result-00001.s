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
  callq .move_128_064_xmm3_r12_r13              #  3     0x8   5      OPC=callq_label   
  callq .move_032_064_r10d_r11d_rcx             #  4     0xd   5      OPC=callq_label   
  callq .move_032_016_ecx_r12w_r13w             #  5     0x12  5      OPC=callq_label   
  callq .move_064_128_r12_r13_xmm3              #  6     0x17  5      OPC=callq_label   
  pxor %xmm3, %xmm1                             #  7     0x1c  4      OPC=pxor_xmm_xmm  
  retq                                          #  8     0x20  1      OPC=retq          
                                                                                        
.size target, .-target
