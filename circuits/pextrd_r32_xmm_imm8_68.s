  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movq $0x40, %rbx    #  1     0     10     OPC=movq_r64_imm64   
  orb %bh, %bl        #  2     0xa   2      OPC=orb_r8_rh        
  movd %xmm1, %eax    #  3     0xc   4      OPC=movd_r32_xmm     
  cmovneq %rax, %rbx  #  4     0x10  4      OPC=cmovneq_r64_r64  
  retq                #  5     0x14  1      OPC=retq             
                                                                 
.size target, .-target
