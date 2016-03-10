  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                    #  Line  RIP  Bytes  Opcode                
.target:                  #        0    0      OPC=<label>           
  cvtdq2pd %xmm1, %xmm10  #  1     0    5      OPC=cvtdq2pd_xmm_xmm  
  unpckhpd %xmm10, %xmm1  #  2     0x5  5      OPC=unpckhpd_xmm_xmm  
  movq %xmm1, %rbx        #  3     0xa  5      OPC=movq_r64_xmm      
  retq                    #  4     0xf  1      OPC=retq              
                                                                     
.size target, .-target
