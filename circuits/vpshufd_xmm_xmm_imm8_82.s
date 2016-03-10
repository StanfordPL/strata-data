  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label         
  vmovups %xmm2, %xmm1              #  2     0x5   4      OPC=vmovups_xmm_xmm     
  vmovd %r13d, %xmm8                #  3     0x9   5      OPC=vmovd_xmm_r32       
  vmovss %xmm2, %xmm2, %xmm2        #  4     0xe   4      OPC=vmovss_xmm_xmm_xmm  
  unpcklps %xmm2, %xmm1             #  5     0x12  3      OPC=unpcklps_xmm_xmm    
  movss %xmm8, %xmm1                #  6     0x15  5      OPC=movss_xmm_xmm       
  retq                              #  7     0x1a  1      OPC=retq                
                                                                                  
.size target, .-target
