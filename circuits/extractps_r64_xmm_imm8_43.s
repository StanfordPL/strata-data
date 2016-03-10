  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP  Bytes  Opcode             
.target:                                          #        0    0      OPC=<label>        
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0    5      OPC=callq_label    
  xorq %rbx, %rbx                                 #  2     0x5  3      OPC=xorq_r64_r64   
  vmovq %xmm11, %rbp                              #  3     0x8  5      OPC=vmovq_r64_xmm  
  xchgl %ebx, %ebp                                #  4     0xd  2      OPC=xchgl_r32_r32  
  retq                                            #  5     0xf  1      OPC=retq           
                                                                                          
.size target, .-target
