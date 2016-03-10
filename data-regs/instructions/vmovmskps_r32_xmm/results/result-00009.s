  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  movq $0x40, %rbx        #  1     0     10     OPC=movq_r64_imm64     
  vpmovsxwd %xmm1, %ymm2  #  2     0xa   5      OPC=vpmovsxwd_ymm_xmm  
  andl %ebx, %ebx         #  3     0xf   2      OPC=andl_r32_r32       
  vmovmskpd %ymm2, %rdi   #  4     0x11  4      OPC=vmovmskpd_r64_ymm  
  cmovnel %edi, %ebx      #  5     0x15  3      OPC=cmovnel_r32_r32    
  retq                    #  6     0x18  1      OPC=retq               
                                                                       
.size target, .-target
