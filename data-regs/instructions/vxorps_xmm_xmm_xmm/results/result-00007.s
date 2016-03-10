  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode            
.target:                                    #        0     0      OPC=<label>       
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label   
  callq .move_128_064_xmm3_r10_r11          #  2     0x5   5      OPC=callq_label   
  callq .move_032_064_r8d_r9d_rdx           #  3     0xa   5      OPC=callq_label   
  callq .move_128_064_xmm2_r12_r13          #  4     0xf   5      OPC=callq_label   
  xorq %r12, %r10                           #  5     0x14  3      OPC=xorq_r64_r64  
  xorq %rdx, %r11                           #  6     0x17  3      OPC=xorq_r64_r64  
  vzeroall                                  #  7     0x1a  3      OPC=vzeroall      
  callq .move_064_128_r10_r11_xmm1          #  8     0x1d  5      OPC=callq_label   
  retq                                      #  9     0x22  1      OPC=retq          
                                                                                    
.size target, .-target
