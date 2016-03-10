  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                
.target:                          #        0     0      OPC=<label>           
  movq $0xfffffffffffffff8, %rbx  #  1     0     10     OPC=movq_r64_imm64    
  xorb %bh, %bl                   #  2     0xa   2      OPC=xorb_r8_rh        
  movd %xmm1, %ebp                #  3     0xc   4      OPC=movd_r32_xmm      
  cmovnbel %ebp, %ebx             #  4     0x10  4      OPC=cmovnbel_r32_r32  
  retq                            #  5     0x14  1      OPC=retq              
                                                                              
.size target, .-target
