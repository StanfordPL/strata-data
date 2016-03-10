  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_cf_into_rcx  #  1     0     5      OPC=callq_label   
  callq .write_cl_to_sf    #  2     0x5   5      OPC=callq_label   
  callq .read_sf_into_rbx  #  3     0xa   5      OPC=callq_label   
  movb %bl, %ch            #  4     0xf   2      OPC=movb_rh_r8    
  movq %rcx, %rax          #  5     0x11  3      OPC=movq_r64_r64  
  retq                     #  6     0x14  1      OPC=retq          
                                                                   
.size target, .-target
