  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_cf_into_rbx  #  1     0     5      OPC=callq_label    
  decw %bx                 #  2     0x5   3      OPC=decw_r16       
  movsbq %bl, %r9          #  3     0x8   4      OPC=movsbq_r64_r8  
  movzbq %r9b, %rax        #  4     0xc   4      OPC=movzbq_r64_r8  
  callq .read_sf_into_rcx  #  5     0x10  5      OPC=callq_label    
  salq %cl, %rax           #  6     0x15  3      OPC=salq_r64_cl    
  retq                     #  7     0x18  1      OPC=retq           
                                                                    
.size target, .-target
