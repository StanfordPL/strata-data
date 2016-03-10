  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  pmovsxwq %xmm1, %xmm10          #  1     0     6      OPC=pmovsxwq_xmm_xmm       
  vunpckhpd %xmm10, %xmm1, %xmm5  #  2     0x6   5      OPC=vunpckhpd_xmm_xmm_xmm  
  movq %xmm5, %rbx                #  3     0xb   5      OPC=movq_r64_xmm           
  retq                            #  4     0x10  1      OPC=retq                   
                                                                                   
.size target, .-target
