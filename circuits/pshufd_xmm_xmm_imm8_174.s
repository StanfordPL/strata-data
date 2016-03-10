  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                      #  Line  RIP  Bytes  Opcode                  
.target:                    #        0    0      OPC=<label>             
  movups %xmm2, %xmm1       #  1     0    3      OPC=movups_xmm_xmm      
  movsldup %xmm2, %xmm13    #  2     0x3  5      OPC=movsldup_xmm_xmm    
  punpckhqdq %xmm13, %xmm1  #  3     0x8  5      OPC=punpckhqdq_xmm_xmm  
  retq                      #  4     0xd  1      OPC=retq                
                                                                         
.size target, .-target
