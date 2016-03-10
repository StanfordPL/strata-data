  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label       
  vzeroall                          #  2     0x5   3      OPC=vzeroall          
  callq .move_064_128_r10_r11_xmm1  #  3     0x8   5      OPC=callq_label       
  movq %r11, %xmm5                  #  4     0xd   5      OPC=movq_xmm_r64      
  vmovd %ebx, %xmm12                #  5     0x12  4      OPC=vmovd_xmm_r32     
  unpcklps %xmm12, %xmm5            #  6     0x16  4      OPC=unpcklps_xmm_xmm  
  movlhps %xmm5, %xmm1              #  7     0x1a  3      OPC=movlhps_xmm_xmm   
  retq                              #  8     0x1d  1      OPC=retq              
                                                                                
.size target, .-target
