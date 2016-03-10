  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                
.target:                          #        0     0      OPC=<label>           
  vzeroall                        #  1     0     3      OPC=vzeroall          
  movq $0xfffffffffffffffe, %rbx  #  2     0x3   10     OPC=movq_r64_imm64    
  bswap %ebx                      #  3     0xd   2      OPC=bswap_r32         
  vmovd %ebx, %xmm9               #  4     0xf   4      OPC=vmovd_xmm_r32     
  pmovsxbq %xmm9, %xmm1           #  5     0x13  6      OPC=pmovsxbq_xmm_xmm  
  retq                            #  6     0x19  1      OPC=retq              
                                                                              
.size target, .-target
