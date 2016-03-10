  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                    
.target:                            #        0     0      OPC=<label>               
  xorq %rbx, %rbx                   #  1     0     3      OPC=xorq_r64_r64          
  movshdup %xmm1, %xmm12            #  2     0x3   5      OPC=movshdup_xmm_xmm      
  vpmovzxwq %xmm12, %xmm8           #  3     0x8   5      OPC=vpmovzxwq_xmm_xmm     
  vmovhlps %xmm8, %xmm1, %xmm2      #  4     0xd   5      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r10_r11  #  5     0x12  5      OPC=callq_label           
  xchgl %r10d, %ebx                 #  6     0x17  3      OPC=xchgl_r32_r32         
  retq                              #  7     0x1a  1      OPC=retq                  
                                                                                    
.size target, .-target
