  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  vunpcklpd %xmm1, %xmm1, %xmm12    #  1     0     4      OPC=vunpcklpd_xmm_xmm_xmm  
  vmovmskpd %xmm12, %ebx            #  2     0x4   5      OPC=vmovmskpd_r32_xmm      
  callq .move_128_064_xmm1_r12_r13  #  3     0x9   5      OPC=callq_label            
  xchgq %rbx, %r12                  #  4     0xe   3      OPC=xchgq_r64_r64          
  retq                              #  5     0x11  1      OPC=retq                   
                                                                                     
.size target, .-target
