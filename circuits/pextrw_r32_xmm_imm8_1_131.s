  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  movshdup %xmm1, %xmm13          #  1     0     5      OPC=movshdup_xmm_xmm       
  pmovzxwq %xmm13, %xmm0          #  2     0x5   6      OPC=pmovzxwq_xmm_xmm       
  vunpckhpd %xmm0, %xmm0, %xmm3   #  3     0xb   4      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_128_064_xmm3_r8_r9  #  4     0xf   5      OPC=callq_label            
  movslq %r9d, %rbx               #  5     0x14  3      OPC=movslq_r64_r32         
  retq                            #  6     0x17  1      OPC=retq                   
                                                                                   
.size target, .-target
