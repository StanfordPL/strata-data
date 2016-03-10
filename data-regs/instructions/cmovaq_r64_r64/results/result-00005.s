  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP  Bytes  Opcode                
.target:                   #        0    0      OPC=<label>           
  cmovnbeq %rcx, %rbx      #  1     0    4      OPC=cmovnbeq_r64_r64  
  callq .read_zf_into_rcx  #  2     0x4  5      OPC=callq_label       
  addb %ch, %bh            #  3     0x9  2      OPC=addb_rh_rh        
  retq                     #  4     0xb  1      OPC=retq              
                                                                      
.size target, .-target
