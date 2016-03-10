  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                            #  Line  RIP   Bytes  Opcode                    
.target:                          #        0     0      OPC=<label>               
  vmovhlps %xmm1, %xmm1, %xmm0    #  1     0     4      OPC=vmovhlps_xmm_xmm_xmm  
  movq $0xfffffffffffffffe, %rbx  #  2     0x4   10     OPC=movq_r64_imm64        
  movq %xmm0, %r8                 #  3     0xe   5      OPC=movq_r64_xmm          
  xchgq %rbx, %r8                 #  4     0x13  3      OPC=xchgq_r64_r64         
  retq                            #  5     0x16  1      OPC=retq                  
                                                                                  
.size target, .-target
