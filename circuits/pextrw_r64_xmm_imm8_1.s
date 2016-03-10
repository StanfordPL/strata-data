  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  pmovzxwq %xmm1, %xmm3             #  1     0     5      OPC=pmovzxwq_xmm_xmm  
  callq .move_128_064_xmm3_r10_r11  #  2     0x5   5      OPC=callq_label       
  movq %r11, %r10                   #  3     0xa   3      OPC=movq_r64_r64      
  movzwl %r10w, %ebx                #  4     0xd   4      OPC=movzwl_r32_r16    
  retq                              #  5     0x11  1      OPC=retq              
                                                                                
.size target, .-target
