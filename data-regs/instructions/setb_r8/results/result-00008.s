  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffff80, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  adcl %ebx, %ebx                 #  2     0xa   2      OPC=adcl_r32_r32    
  setnp %r13b                     #  3     0xc   4      OPC=setnp_r8        
  adcb %r13b, %bl                 #  4     0x10  3      OPC=adcb_r8_r8      
  callq .read_pf_into_rbx         #  5     0x13  5      OPC=callq_label     
  retq                            #  6     0x18  1      OPC=retq            
                                                                            
.size target, .-target
