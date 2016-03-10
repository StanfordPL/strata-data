  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP   Bytes  Opcode                
.target:                  #        0     0      OPC=<label>           
  vmovq %xmm2, %r8        #  1     0     5      OPC=vmovq_r64_xmm     
  vzeroall                #  2     0x5   3      OPC=vzeroall          
  movq %r8, %xmm14        #  3     0x8   5      OPC=movq_xmm_r64      
  pmovsxwd %xmm14, %xmm1  #  4     0xd   6      OPC=pmovsxwd_xmm_xmm  
  retq                    #  5     0x13  1      OPC=retq              
                                                                      
.size target, .-target
