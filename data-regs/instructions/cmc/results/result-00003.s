  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  callq .read_cf_into_rbx          #  1     0     5      OPC=callq_label     
  callq .move_064_032_rbx_r8d_r9d  #  2     0x5   5      OPC=callq_label     
  xaddl %ebx, %r8d                 #  3     0xa   4      OPC=xaddl_r32_r32   
  movq $0x5, %rax                  #  4     0xe   10     OPC=movq_r64_imm64  
  decl %r8d                        #  5     0x18  3      OPC=decl_r32        
  addw %ax, %r8w                   #  6     0x1b  4      OPC=addw_r16_r16    
  retq                             #  7     0x1f  1      OPC=retq            
                                                                             
.size target, .-target
