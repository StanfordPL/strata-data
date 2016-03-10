  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                      #  Line  RIP  Bytes  Opcode                  
.target:                    #        0    0      OPC=<label>             
  vmovshdup %xmm1, %xmm12   #  1     0    4      OPC=vmovshdup_xmm_xmm   
  punpcklqdq %xmm12, %xmm1  #  2     0x4  5      OPC=punpcklqdq_xmm_xmm  
  vmovq %xmm1, %rbx         #  3     0x9  5      OPC=vmovq_r64_xmm       
  retq                      #  4     0xe  1      OPC=retq                
                                                                         
.size target, .-target
