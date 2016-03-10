  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  vcvttps2dq %xmm1, %xmm7  #  1     0    4      OPC=vcvttps2dq_xmm_xmm  
  andnpd %xmm7, %xmm7      #  2     0x4  4      OPC=andnpd_xmm_xmm      
  movddup %xmm7, %xmm1     #  3     0x8  4      OPC=movddup_xmm_xmm     
  retq                     #  4     0xc  1      OPC=retq                
                                                                        
.size target, .-target
