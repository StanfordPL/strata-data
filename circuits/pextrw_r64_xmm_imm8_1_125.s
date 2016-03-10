  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  pmovzxwq %xmm10, %xmm2                          #  2     0x5   6      OPC=pmovzxwq_xmm_xmm      
  vpbroadcastb %xmm2, %xmm0                       #  3     0xb   5      OPC=vpbroadcastb_xmm_xmm  
  xorl %edi, %edi                                 #  4     0x10  2      OPC=xorl_r32_r32          
  callq .move_128_064_xmm2_r8_r9                  #  5     0x12  5      OPC=callq_label           
  vhaddps %xmm0, %xmm0, %xmm13                    #  6     0x17  4      OPC=vhaddps_xmm_xmm_xmm   
  vmovd %xmm13, %ebx                              #  7     0x1b  4      OPC=vmovd_r32_xmm         
  cmovgeq %r9, %rbx                               #  8     0x1f  4      OPC=cmovgeq_r64_r64       
  retq                                            #  9     0x23  1      OPC=retq                  
                                                                                                  
.size target, .-target
