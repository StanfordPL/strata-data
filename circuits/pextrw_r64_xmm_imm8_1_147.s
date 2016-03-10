  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpmovzxwq %xmm9, %ymm5                          #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm       
  xorq %rbx, %rbx                                 #  3     0xa   3      OPC=xorq_r64_r64            
  vcvtsi2ssl %ebx, %xmm5, %xmm7                   #  4     0xd   4      OPC=vcvtsi2ssl_xmm_xmm_r32  
  vhaddpd %xmm10, %xmm7, %xmm10                   #  5     0x11  5      OPC=vhaddpd_xmm_xmm_xmm     
  movq %xmm10, %rbx                               #  6     0x16  5      OPC=movq_r64_xmm            
  retq                                            #  7     0x1b  1      OPC=retq                    
                                                                                                    
.size target, .-target
