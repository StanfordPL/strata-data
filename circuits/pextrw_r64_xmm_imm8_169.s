  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm2                    #  1     0     5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label        
  movl %r8d, %ebp                           #  3     0xa   3      OPC=movl_r32_r32       
  xorl %ebx, %ebx                           #  4     0xd   2      OPC=xorl_r32_r32       
  cmovnaeq %rbx, %rbx                       #  5     0xf   4      OPC=cmovnaeq_r64_r64   
  cmovpew %bp, %bx                          #  6     0x13  4      OPC=cmovpew_r16_r16    
  retq                                      #  7     0x17  1      OPC=retq               
                                                                                         
.size target, .-target
