  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  vsubss %xmm1, %xmm1, %xmm7                #  1     0     4      OPC=vsubss_xmm_xmm_xmm  
  movq $0x5, %rbx                           #  2     0x4   10     OPC=movq_r64_imm64      
  vminsd %xmm7, %xmm1, %xmm3                #  3     0xe   4      OPC=vminsd_xmm_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  4     0x12  5      OPC=callq_label         
  xchgl %ebx, %edx                          #  5     0x17  2      OPC=xchgl_r32_r32       
  retq                                      #  6     0x19  1      OPC=retq                
                                                                                          
.size target, .-target
