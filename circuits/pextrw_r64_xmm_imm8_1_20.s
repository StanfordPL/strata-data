  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm6, %ymm9                        #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  vmovq %xmm9, %rbx                             #  3     0xa   5      OPC=vmovq_r64_xmm      
  movzwl %bx, %edx                              #  4     0xf   3      OPC=movzwl_r32_r16     
  cmpl %edx, %ebx                               #  5     0x12  2      OPC=cmpl_r32_r32       
  cmovncq %rdx, %rbx                            #  6     0x14  4      OPC=cmovncq_r64_r64    
  xchgl %ebx, %ebx                              #  7     0x18  2      OPC=xchgl_r32_r32      
  retq                                          #  8     0x1a  1      OPC=retq               
                                                                                             
.size target, .-target
