  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode              
.target:                   #        0    0      OPC=<label>         
  callq .read_cf_into_rbx  #  1     0    5      OPC=callq_label     
  movslq %ebx, %rcx        #  2     0x5  3      OPC=movslq_r64_r32  
  movb %cl, %ch            #  3     0x8  2      OPC=movb_rh_r8      
  movq %rcx, %rax          #  4     0xa  3      OPC=movq_r64_r64    
  retq                     #  5     0xd  1      OPC=retq            
                                                                    
.size target, .-target
