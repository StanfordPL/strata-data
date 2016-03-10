  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                  #  Line  RIP   Bytes  Opcode                
.target:                #        0     0      OPC=<label>           
  movmskpd %xmm1, %esi  #  1     0     4      OPC=movmskpd_r32_xmm  
  vmovq %rsi, %xmm6     #  2     0x4   5      OPC=vmovq_xmm_r64     
  pandn %xmm6, %xmm1    #  3     0x9   4      OPC=pandn_xmm_xmm     
  subpd %xmm1, %xmm1    #  4     0xd   4      OPC=subpd_xmm_xmm     
  retq                  #  5     0x11  1      OPC=retq              
                                                                    
.size target, .-target
