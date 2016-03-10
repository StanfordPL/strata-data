  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  vmovd %xmm1, %esp               #  1     0     4      OPC=vmovd_r32_xmm    
  movq $0xffffffffffffffe0, %rbx  #  2     0x4   10     OPC=movq_r64_imm64   
  movzbq %spl, %rcx               #  3     0xe   4      OPC=movzbq_r64_r8    
  negb %ch                        #  4     0x12  2      OPC=negb_rh          
  cmovlel %esp, %ebx              #  5     0x14  3      OPC=cmovlel_r32_r32  
  retq                            #  6     0x17  1      OPC=retq             
                                                                             
.size target, .-target
