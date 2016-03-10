  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  xorpd %xmm1, %xmm1     #  1     0    4      OPC=xorpd_xmm_xmm     
  unpckhpd %xmm1, %xmm1  #  2     0x4  4      OPC=unpckhpd_xmm_xmm  
  movsd %xmm1, %xmm1     #  3     0x8  4      OPC=movsd_xmm_xmm     
  retq                   #  4     0xc  1      OPC=retq              
                                                                    
.size target, .-target