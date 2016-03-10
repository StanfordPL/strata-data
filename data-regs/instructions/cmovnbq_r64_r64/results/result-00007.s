  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  vmovd %ebx, %xmm5                         #  1     0     4      OPC=vmovd_xmm_r32       
  vsubss %xmm5, %xmm5, %xmm2                #  2     0x4   4      OPC=vsubss_xmm_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0x8   5      OPC=callq_label         
  cmovncq %rcx, %rbx                        #  4     0xd   4      OPC=cmovncq_r64_r64     
  orw %r8w, %bx                             #  5     0x11  4      OPC=orw_r16_r16         
  retq                                      #  6     0x15  1      OPC=retq                
                                                                                          
.size target, .-target
