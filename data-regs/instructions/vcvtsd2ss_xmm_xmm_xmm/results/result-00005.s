  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  cvtsd2ss %xmm3, %xmm2  #  1     0    4      OPC=cvtsd2ss_xmm_xmm  
  vmovq %xmm2, %xmm1     #  2     0x4  4      OPC=vmovq_xmm_xmm     
  por %xmm2, %xmm1       #  3     0x8  4      OPC=por_xmm_xmm       
  retq                   #  4     0xc  1      OPC=retq              
                                                                    
.size target, .-target
