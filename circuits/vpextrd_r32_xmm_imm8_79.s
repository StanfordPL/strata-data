  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vmaxps %xmm1, %xmm1, %xmm11                   #  1     0     4      OPC=vmaxps_xmm_xmm_xmm  
  vsubss %xmm1, %xmm11, %xmm2                   #  2     0x4   4      OPC=vsubss_xmm_xmm_xmm  
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  3     0x8   5      OPC=callq_label         
  movq $0xfffffffffffffffa, %rbx                #  4     0xd   10     OPC=movq_r64_imm64      
  xchgl %ebx, %r13d                             #  5     0x17  3      OPC=xchgl_r32_r32       
  retq                                          #  6     0x1a  1      OPC=retq                
                                                                                              
.size target, .-target
