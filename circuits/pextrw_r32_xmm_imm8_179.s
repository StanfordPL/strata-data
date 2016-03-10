  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  vmovaps %xmm1, %xmm2                      #  1     0     4      OPC=vmovaps_xmm_xmm     
  vaddss %xmm2, %xmm2, %xmm8                #  2     0x4   4      OPC=vaddss_xmm_xmm_xmm  
  vpmovzxwd %xmm8, %xmm3                    #  3     0x8   5      OPC=vpmovzxwd_xmm_xmm   
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  4     0xd   5      OPC=callq_label         
  movslq %r9d, %rbx                         #  5     0x12  3      OPC=movslq_r64_r32      
  retq                                      #  6     0x15  1      OPC=retq                
                                                                                          
.size target, .-target
