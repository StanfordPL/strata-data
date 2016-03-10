  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                   
.target:                                    #        0     0      OPC=<label>              
  vsqrtss %xmm1, %xmm1, %xmm2               #  1     0     4      OPC=vsqrtss_xmm_xmm_xmm  
  vmaxsd %xmm1, %xmm2, %xmm2                #  2     0x4   4      OPC=vmaxsd_xmm_xmm_xmm   
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0x8   5      OPC=callq_label          
  movzwq %r8w, %rbx                         #  4     0xd   4      OPC=movzwq_r64_r16       
  retq                                      #  5     0x11  1      OPC=retq                 
                                                                                           
.size target, .-target
