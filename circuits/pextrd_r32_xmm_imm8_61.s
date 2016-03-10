  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vmovshdup %xmm1, %xmm15  #  1     0     4      OPC=vmovshdup_xmm_xmm  
  movd %xmm15, %r9d        #  2     0x4   5      OPC=movd_r32_xmm       
  movq $0x2, %rbx          #  3     0x9   10     OPC=movq_r64_imm64     
  xchgq %r9, %rbx          #  4     0x13  3      OPC=xchgq_r64_r64      
  retq                     #  5     0x16  1      OPC=retq               
                                                                        
.size target, .-target
