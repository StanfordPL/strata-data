  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vpmovzxdq %xmm1, %ymm11           #  1     0     5      OPC=vpmovzxdq_ymm_xmm   
  vmaxss %xmm11, %xmm11, %xmm9      #  2     0x5   5      OPC=vmaxss_xmm_xmm_xmm  
  xorq %rbx, %rbx                   #  3     0xa   3      OPC=xorq_r64_r64        
  movaps %xmm9, %xmm1               #  4     0xd   4      OPC=movaps_xmm_xmm      
  callq .move_128_064_xmm1_r10_r11  #  5     0x11  5      OPC=callq_label         
  cmovnbl %r11d, %ebx               #  6     0x16  4      OPC=cmovnbl_r32_r32     
  retq                              #  7     0x1a  1      OPC=retq                
                                                                                  
.size target, .-target
